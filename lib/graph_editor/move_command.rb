module GraphEditor
  class MoveCommand
    def move_command(graphic_target, delta)
      @target = graphic_target
      @delta = delta
    end

    def execute
      solver = GraphEditor::ConstraintSolver.instance

      @state = solver.create_memento #создание хранителя
      target.move(delta)

      solver.solve
    end

    def unexecute
      solver = GraphEditor::ConstraintSolver.instance

      target.move(-delta)
      solver.set_memento(state) #восстановление состояния хозяина

      solver.solve
    end

    private

    attr_reader :state, :delta, :target
  end
end
